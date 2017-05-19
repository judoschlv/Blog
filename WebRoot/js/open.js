var sbtitle  = '<%=session.getAttribute("USER_KEY")%>';
if(sbtitle){
if(sbtitle.style.display=='block'){
sbtitle.style.display='none';
}else{
sbtitle.style.display='block';
}
}