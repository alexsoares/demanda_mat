<script type="text/javascript">
function fill(id,val){
	var select = $(id);
	var length = select.length;
	for(var i=0; i<length; i++)
		select.remove(0);

	if(val.lenght<=0)
		return;
	select.appendChild(document.createElement("option"));

	val.each(function(opt){
		var option 		= document.createElement("option");
		option.text 	= opt[0];
		option.value 	= opt[1];
		select.appendChild(option);
	})    
}
</script>

