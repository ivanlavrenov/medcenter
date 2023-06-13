using System;
using System.Collections.Generic;
using System.Text.Json;
using System.IO;
using System.Numerics;
using System.Web.Services.Description;
using System.Xml.Linq;


namespace web
{
    public partial class Default : System.Web.UI.Page
    {
        public class Person
        {
            public List<Comment> data { get; set; }

        }

        public class Comment
        {
            public string name { get; set; }
            public string text { get; set; }
       
        }

        public class Appointments
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

        protected void OpenModal(object sender, EventArgs e)
        {
            modal.CssClass = "opened_modal";
        }

        protected void CloseModal(object sender, EventArgs e)
        {
            modalDate.Text = "";
            modalName.Text = "";
            modalPhone.Text = "";
            modalDoctor.Text = "";
            modalService.Text = "";
            modal.CssClass = "";
        }

        protected void ModalFormClick(object sender, EventArgs e)
        {
            if (modalDate.Text.Length > 0 && modalName.Text.Length > 0 && modalPhone.Text.Length > 0 && modalDoctor.Text.Length > 0 && modalService.Text.Length > 0) {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"..\..\data\appointments.json";
                string text = File.ReadAllText(path);
                var person = JsonSerializer.Deserialize<Appointments>(text); 

                var appointment = new Appointment
                {
                    date = modalDate.Text,
                    name = modalName.Text,
                    phone = modalPhone.Text,
                    doctor = modalDoctor.Text,
                    service = modalService.Text,
                    id = 1
                };

                person.data.Add(appointment);

                string jsonString = JsonSerializer.Serialize(person);
                File.WriteAllText(path, jsonString);

                modalDate.Text = "";
                modalName.Text = "";
                modalPhone.Text = "";
                modalDoctor.Text = "";
                modalService.Text = "";
                modal.CssClass = "";
            }
        }
    }
}