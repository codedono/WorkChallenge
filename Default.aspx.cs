using System;

namespace workChallengeWebForm {

    public partial class Default : System.Web.UI.Page {

        public void Button1Clicked(object sender, EventArgs args)
        {
            //holds all the data input from the user.
            string Answer = "<br/>" + lastName.Text + "<br/>" + firstName.Text + "<br/>" + phoneNumber.Text + "<br/>" + zipCode.Text + "<br/>" + dateHired.Text;

            //the input from the user returned on the front end.
            AnswerMessage.Text = Answer;
        }
    }
}