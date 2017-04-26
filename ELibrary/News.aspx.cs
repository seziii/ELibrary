using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

namespace ELibrary
{
    public partial class News : Inherited
    {
        XmlTextReader XmlTextRssReader;
        XmlDocument XmlDocumentRss;
        XmlNode XmlNodeRss;
        XmlNode nodeChannel;
        XmlNode nodeItem;
        DataTable table = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataColumn col = table.Columns.Add("Заглавие на новина");
            DataColumn col1 = table.Columns.Add("Линк");
            XmlTextRssReader = new XmlTextReader("http://www.dnevnik.bg/rssc/?rubrid=1657");
            XmlDocumentRss = new XmlDocument();

            //Zarejdane na HML sudurjanieto v HMLdokument
            XmlDocumentRss.Load(XmlTextRssReader);

            //Cikul za proverka za <rss> tag
             
            for (int i = 0; i < XmlDocumentRss.ChildNodes.Count; i++)
            {
                if (XmlDocumentRss.ChildNodes[i].Name == "rss")
                {
                    //pri nameren <rss> tag se zarejdat dannite za siotvetniq tag i podtagovete mu
                    XmlNodeRss = XmlDocumentRss.ChildNodes[i];
                }
                
            }

            //Proverka ako ima namereni tagove v RSS da izpylnqva sledvashtite komandi
            if (XmlNodeRss.ChildNodes.Count != 0)
            {
                //Cikal za proverka na <channel> tag
                for (int i = 0; i < XmlNodeRss.ChildNodes.Count; i++)
                {
                    if (XmlNodeRss.ChildNodes[i].Name == "channel")
                    {
                        //pri nameren <channel> tag
                        nodeChannel = XmlNodeRss.ChildNodes[i];
                    }
                }

                //Populvane na danni za kanala v etiketite
                lblTitle.Text = "Titel: " + nodeChannel["title"].InnerText;
                lblLanguage.Text = "Language: " + nodeChannel["language"].InnerText;
                lblLink.Text = "Link: " + nodeChannel["link"].InnerText;
                lblDescription.Text = "Description: " + nodeChannel["description"].InnerText;
                
                // Cikal za polilvane na zaglaviq i linkove kum novinite v GridView-to
                for (int i = 0; i < nodeChannel.ChildNodes.Count; i++)
                {
                    if(nodeChannel.ChildNodes[i].Name=="item")//Proverka samo na novinite
                    {
                        nodeItem = nodeChannel.ChildNodes[i];

                        //Suzdavane na red v GridView-to, sudurjasht informaciq za novinite (zaglavie i link), vzeta ot tagovete
                        DataRow row = table.NewRow();
                        row[0] = nodeItem["title"].InnerText;
                        row[1] = nodeItem["link"].InnerText;
                        table.Rows.Add(row);
                        table.AcceptChanges();
                        GrViewNews.DataSource = table;
                        GrViewNews.DataBind();




                    }
                }
            }
        }

        protected void GrViewNews_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Response.Redirect(GrViewNews.SelectedRow.Cells[2].Text);
        }
    }
}