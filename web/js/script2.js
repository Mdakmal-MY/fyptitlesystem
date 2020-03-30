	var ApproveContainer = document.getElementById('approvecontainer2');
	var approveBtn = document.getElementById('approve');
	var closeapproveBtn = document.getElementById('closeappBtn');

    approveBtn.addEventListener('click', openApprove);
	closeapproveBtn.addEventListener('click', closeApprove);
	
	function openApprove()
	{
		ApproveContainer.style.display = 'block';
	}
	
	function closeApprove()
	{
		ApproveContainer.style.display = 'none';
	}