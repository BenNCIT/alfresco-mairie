<style>
.myMessage
{
	margin-left : 	35px;
	margin-top : 	40px;
}

</style>

<#if messageIsNull>
<div class="myMessage">
	<h2>Aucun Message à affiché</h2>
</div>
<#else>
<div class="myMessage">
	<h2> Message affiché :</h2>
	<p> ${message} </p>
</div>


</#if>
