Dado(/^que esteja no home  do site Orangehrm$/) do
	visit "https://enterprise-demo.orangehrmlive.com"
end


Quando(/^buscar um usuario e alterar seu cadastro$/) do

fill_in('txtUsername', :with=>'Admin')

fill_in('txtPassword', :with=>'admin')

click_button("btnLogin")

find("#menu_pim_viewPimModule").click

find("#menu_pim_viewEmployeeList").click

click_link("0044")

click_button("btnSave")

fill_in('personal[txtEmpFirstName]', :with=>'Usui')

click_button("btnSave")


end


Entao(/^apresentara a alteracao do cadastro$/) do

	assert_text('Successfully Saved')


end

