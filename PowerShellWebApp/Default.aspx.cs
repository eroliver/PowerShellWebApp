using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management;
using System.Management.Automation;
using System.Text;

namespace PowerShellWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ExecuteCode_Click(object sender, EventArgs e)
        {
            // Clean the Result TextBox
            ResultBox.Text = string.Empty;

            // Initialize PowerShell engine
            var shell = PowerShell.Create();

            // Create a base command, which would be tied to specific request forms/sections
            // This would need to be dynamically generated based on the request, but in this example, the customer can perform a "contains" search of processes
            string baseCommand = "Get-Process";

            //Create a string builder object to hold the final command that will be used, which will be modified based on input
            System.Text.StringBuilder fullCommand = new StringBuilder(baseCommand);

            // Store the argument passed by the text box
            string customerInput = Input.Text;

            if (customerInput != null)
            {
                fullCommand.Append(" -Name \"*");
                fullCommand.Append(customerInput);
                fullCommand.Append("*\"");
            }

            //Make sure the final command is piped to Out-String or the results will be ps objects
            fullCommand.Append(" | Out-String");

            // Add the script to the PowerShell object
            shell.Commands.AddScript(fullCommand.ToString());

            // Execute the script
            var results = shell.Invoke();

            // display results, with BaseObject converted to string
            // Note : use |out-string for console-like output
            if (results.Count() > 0)
            {
                // We use a string builder to create our result text
                var builder = new StringBuilder();

                foreach (var psObject in results)
                {
                    // Convert the Base Object to a string and append it to the string builder.
                    // Add \r\n for line breaks
                    builder.Append(psObject.BaseObject.ToString() + "\r\n");
                }

                // Encode the string in HTML (prevent security issue with 'dangerous' caracters like < >
                ResultBox.Text = Server.HtmlEncode(builder.ToString());
            }
        }
    }
}