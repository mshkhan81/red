{{foreach $threads as $thread}}
{{foreach $thread.items as $thread_item}} 
{{include file="{{$thread_item.template}}" item=$thread_item}}
{{/foreach}}
{{/foreach}}

<div id="conversation-end"></div>

{{if $dropping}}
<div id="item-delete-selected" class="fakelink" onclick="deleteCheckedItems();">
  <div id="item-delete-selected-icon" class="icon drophide" title="{{$dropping}}" onmouseover="imgbright(this);" onmouseout="imgdull(this);" ></div>
  <div id="item-delete-selected-desc" >{{$dropping}}</div>
</div>
<div id="item-delete-selected-end"></div>
{{/if}}