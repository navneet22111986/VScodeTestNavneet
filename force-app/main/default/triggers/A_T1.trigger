trigger A_T1 on Account (Before Insert, Before Update) {

  for(Account a : Trigger.New){
    if(a.Industry == 'Education')
     a.AddError('We do not work with Education Orgs anymore, Sorry!');
  }
  }