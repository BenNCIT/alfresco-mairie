var message = args["message"];
var messageIsNull = false;

if( message == '' || message == null)
{
	messageIsNull = true;
}

model.messageIsNull = messageIsNull;
model.message = message;