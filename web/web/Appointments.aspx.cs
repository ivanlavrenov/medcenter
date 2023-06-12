using System;
using System.Collections.Generic;
using System.Text.Json;
using System.IO;
using System.Text;

namespace web
{
    public partial class Appointments : System.Web.UI.Page
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
            int id = 1;
            string path = AppDomain.CurrentDomain.BaseDirectory + @"..\..\data\appointments.json";

            string text = File.ReadAllText(path);
            var person = JsonSerializer.Deserialize<IAppointments>(text);

            StringBuilder sb = new StringBuilder();

            List<Appointment> list = person.data.FindAll(i => i.id == id);

            if (list.Count > 0)
            {
                sb.Append("<ul class=appointments_list id=\"tabs\">");

                for (int i = 0; i < list.Count; i++)
                {
                    sb.Append(
                    "<li class=appointments_list_item id=\"tab_" + i + "\">" +
                        "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Имя:</label>" +
                            "<label class=appointments_list_item_text_value>" + list[i].name + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Телефон:</label>" +
                            "<label class=appointments_list_item_text_value>" + list[i].phone + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Дата записи:</label>" +
                            "<label class=appointments_list_item_text_value>" + list[i].date + "</label>" +
                        "</div>" +
                         "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Специалист:</label>" +
                            "<label class=appointments_list_item_text_value>" + list[i].doctor + "</label>" +
                        "</div>" +
                            "<div class=appointments_list_item_text>" +
                            "<label class=appointments_list_item_text_title>Услуга:</label>" +
                            "<label class=appointments_list_item_text_value>" + list[i].service + "</label>" +
                        "</div>" +
                    "</li>");
                }

                sb.Append("</ul>");

                litMarkup.Text = sb.ToString();
            }
        }
    }
}