using System;
using System.Collections.Generic;
using System.Text.Json;
using System.IO;
using System.Text;
using System.Reflection;
using System.Xml.Linq;

namespace web
{
    public partial class Comments : System.Web.UI.Page
    {
        public class IComments
        {
            public List<Comment> data { get; set; }

        }

        public class Comment
        {
            public string name { get; set; }
            public string text { get; set; }
        }

        protected void CreateComment(object sender, EventArgs e)
        {
            if (commentName.Text.Length > 0 && commentText.Text.Length > 0)
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"..\..\data\comments.json";

                string text = File.ReadAllText(path);
                var commentsJSON = JsonSerializer.Deserialize<IComments>(text);

                var appointment = new Comment
                {
                    name = commentName.Text,
                    text = commentText.Text
                };

                commentsJSON.data.Add(appointment);

                string jsonString = JsonSerializer.Serialize(commentsJSON);
                File.WriteAllText(path, jsonString);

                commentName.Text = "";
                commentText.Text = "";
                Page_Load();
            }
        }

        protected void Page_Load()
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + @"..\..\data\comments.json";


            string text = File.ReadAllText(path);
            var commentsJSON = JsonSerializer.Deserialize<IComments>(text);

            StringBuilder sb = new StringBuilder();

            if (commentsJSON.data.Count > 0)
            {
                sb.Append("<ul class=comments_list id=\"tabs\">");

                for (int i = 0; i < commentsJSON.data.Count; i++)
                {
                    sb.Append(
                    "<li class=comments_list_item id=\"tab_" + i + "\">" +
                        "<div class=comments_list_item_text>" +
                            "<label class=comments_list_item_text_name>" + commentsJSON.data[i].name + "</label>" +
                        "</div>" +
                         "<div class=comments_list_item_text>" +
                            "<label class=comments_list_item_text_value>" + commentsJSON.data[i].text + "</label>" +
                        "</div>" +
                    "</li>");
                }

                sb.Append("</ul>");

                comments.Text = sb.ToString();
            }
        }
    }
}