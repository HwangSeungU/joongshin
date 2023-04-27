const $msgContainer = $('.page-body .container ul.row');
const $selectionTabs = $('.chat-filter .chat-filter-item');
const $search = $('input.form-search-text-input');

let messagesJSONArray;

receive = receive ? receive : false;
console.log(messages);
if(messages) {
	messagesJSONArray = JSON.parse(messages);
	
	showMessageList();	
} else {
	location.href = "/messageListOk.message?receive=" + receive;
}

const $msgList = $('.page-body .container ul.row li');

$search.on('search', function() {
	location.href = `/messageListOk.message?receive=${receive}&keyword=` + this.value;
});

$selectionTabs.eq(0).on('click', function() {
	location.href = "/messageListOk.message?receive=false";
});

$selectionTabs.eq(1).on('click', function() {
	location.href = "/messageListOk.message?receive=true";
});

$msgList.each(function(i, li) {
	$(li).on('click', function() {
		location.href = "/messageOk.message?receive=" + (i == 1) + "&messageId=" + messagesJSONArray[i].messageId;
	});
});

function showMessageList() {
	//console.log(messages);
	let text = '';
	
	messagesJSONArray.forEach(msg => {
		text += `
			<li data-name="chat-list" class="col-12">
	            <div class="chat-item">
	                <div class="badge-list"></div>

	                <section class="row user-info align-items-start">
						<div class="profile col-auto">
							<div class="user-profile-picture">
								<div style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile/add3cf7b-807e-4d65-bc6d-d1781b93a3a0.jpg?h=320&amp;w=320&quot;);">
								</div>
							</div>
						</div>
	                    <div class="service-info col">
	                        <div class="pro-status">
	                            <h5> ${msg.userName} </h5>
	                        </div>
	                    </div>
	                </section>
	                <div class="row last-message">
	                    <p>${msg.messageContents.substr(0, (msg.messageContents <= 30 ? msg.messageContents.length : 30))}</p>
	                </div>
	                <div class="divider"></div>
	                <div class="row quote-info">
	                    <div class="updated-at">
	                        <p>${msg.messageUpdateDatetime}</p>
	                    </div>
	                </div>
	            </div>
	        </li>
		`
	});
	
	if(messages.length == 0){
		text += `
			<li>
		        <div>
					쪽지 기록이 없습니다.
				</div>
			</li>
		`
	}
	
	$msgContainer.append(text);
}

