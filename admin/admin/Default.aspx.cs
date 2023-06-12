using System;
using System.Collections.Generic;
using System.Text.Json;
using System.IO;
using System.Text;

namespace admin
{
    public partial class Default : System.Web.UI.Page
    {
        public class IAppointments
        {
            public List<Appointment> data { get; set; }

        }

        public class Appointment
        {
            public string name { get; set; }
            public string phone { get; set; }
            public string date { get; set; }
            public string doctor { get; set; }
            public string service { get; set; }

            public int id { get; set; }

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + @"..\..\data\appointments.json";

            string text = File.ReadAllText(path);
            var person = JsonSerializer.Deserialize<IAppointments>(text);

            StringBuilder sb = new StringBuilder();

            if (person.data.Count > 0)
            {
                sb.Append("<ul class=appointments_list id=\"tabs\">");

                for (int i = 0; i < person.data.Count; i++)
                {
                    sb.Append(
                    "<li class=appointments_list_item id=\"tab_" + i + "\">" +
                      "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>id: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].id + "</label>" +
                        "</div>" +
                        "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Имя: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].name + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Телефон: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].phone + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Дата записи: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].date + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Специалист: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].doctor + "</label>" +
                        "</div>" +
                            "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Услуга: </label>" +
                            "<label class=appointments_list_item_text_value>" + person.data[i].service + "</label>" +
                        "</div>" +
                    "</li>");
                }

                sb.Append("</ul>");

                litMarkup.Text = sb.ToString();
            }
        }
    }
}