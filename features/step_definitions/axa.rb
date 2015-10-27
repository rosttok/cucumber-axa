  Given(/^open selenium web driver$/) do

  @time = Time.new.nsec
  repeat = ARGV.join('')
  @driver = Selenium::WebDriver.for :chrome
  @base_url = "http://localhost:5555"
  #@base_url = "http://52.17.174.169/"
@driver.manage.timeouts.implicit_wait = 30
end

When(/^create (\d+) resources$/) do |arg1|
  @maxres = arg1.to_i
  @minres = 1
  @driver.get(@base_url + "#/management/resources") #go to demo-server resource page
  sleep 2
  @driver.find_element(:name, "CreateButton").click # button "create new resource"
  @driver.find_element(:name, "name").clear # resource name
  @driver.find_element(:name, "name").send_keys "admin"
  @driver.find_element(:name, "staffingGroup").clear
  @driver.find_element(:name, "staffingGroup").send_keys "Others"
  @driver.find_element(:xpath,"(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'][1])").click
  @driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
  @driver.find_element(:id, "dropdownScope0").click # select RESOURCE TYPE
  @driver.find_element(:id, "internal0").click # chouse internal
  @driver.find_element(:id, "dropdownPermissions0").click # select WORKING LOCATION
  @driver.find_element(:id, "axaOffices0").click # chouse axaOffices
  @driver.find_element(:name, "startDate0").click # chouse startDate
  @driver.find_element(:xpath, "(//button[@type='button'])[2]").click #month
  @driver.find_element(:xpath, "(//button[@type='button'])[4]").click #January
  @driver.find_element(:xpath, "(//button[@type='button'])[7]").click #1-1-2015
  @driver.find_element(:name, "endDate0").click # chouse endDate
  @driver.find_element(:xpath, "(//button[@type='button'])[47]").click #month
  @driver.find_element(:xpath, "(//button[@type='button'])[60]").click #December
  @driver.find_element(:xpath, "(//button[@type='button'])[80]").click #31-12-2015
  @driver.find_element(:name, "buttonSave").click #click save
sleep 2

  def create_resources
    sleep 2
    @driver.find_element(:name, "CreateButton").click # button "create new resource"
    @driver.find_element(:name, "name").clear # resource name
    @driver.find_element(:name, "name").send_keys "resource#@minres#@time"
    @driver.find_element(:name, "staffingGroup").clear
    @driver.find_element(:name, "staffingGroup").send_keys "Others"
    @driver.find_element(:xpath,"(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'][1])").click
    @driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
    @driver.find_element(:id, "dropdownScope0").click # select RESOURCE TYPE
    @driver.find_element(:id, "internal0").click # chouse internal
    @driver.find_element(:id, "dropdownPermissions0").click # select WORKING LOCATION
    @driver.find_element(:id, "axaOffices0").click # chouse axaOffices
    @driver.find_element(:name, "startDate0").click # chouse startDate
    @driver.find_element(:xpath, "(//button[@type='button'])[2]").click #month
    @driver.find_element(:xpath, "(//button[@type='button'])[4]").click #January
    @driver.find_element(:xpath, "(//button[@type='button'])[7]").click #1-1-2015
    @driver.find_element(:name, "endDate0").click # chouse endDate
    @driver.find_element(:xpath, "(//button[@type='button'])[47]").click #month
    @driver.find_element(:xpath, "(//button[@type='button'])[60]").click #December
    @driver.find_element(:xpath, "(//button[@type='button'])[80]").click #31-12-2015
    @driver.find_element(:name, "buttonSave").click #click save
    sleep 2
  end

  while @minres <= @maxres do
    create_resources
    @minres += 1
  end
end

When(/^create (\d+) projects$/) do |arg1|
@maxproj = arg1.to_i
@minproj = 1
@driver.get(@base_url + "#/management/project") #go to demo-server project page
    def create_projects
      sleep 2
      @driver.find_element(:name, "CreateButton").click  #click button "create new project"
      sleep 2
      @driver.find_element(:name, "name").clear # select field "name"
      @driver.find_element(:name, "name").send_keys "project #@minproj #@time" # fill field "name"
      @driver.find_element(:name, "wbs").clear # select field "wbs"
      @driver.find_element(:name, "wbs").send_keys "wbs+#@minproj.#@time" # fill field "wbs"
      @driver.find_element(:name, "startDate").click # select calendar(from) select 1 January 2015
      @driver.find_element(:xpath, "(//button[@type='button'])[2]").click
      @driver.find_element(:xpath, "(//button[@type='button'])[4]").click
      @driver.find_element(:xpath, "(//button[@type='button'])[7]").click
      @driver.find_element(:name, "endDate").click # select calendar(to) select 31 December 2015
      @driver.find_element(:xpath, "(//button[@type='button'])[47]").click
      @driver.find_element(:xpath, "(//button[@type='button'])[60]").click
      @driver.find_element(:xpath, "(//button[@type='button'])[80]").click
      @driver.find_element(:name, "responsible").clear #select  field "responsible"
      @driver.find_element(:name, "responsible").send_keys "admin" # fill field "responsible"
      @driver.find_element(:xpath, "(//li[@class='axa-suggestion-item matches-box ng-binding ng-scope'])").click
      @driver.find_element(:xpath, "(//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1])").click
      @driver.find_element(:name, "description").clear # select field "description"
      @driver.find_element(:name, "description").send_keys "description - #@time" # fill field "description"
      sleep 2
      @driver.find_element(:name, "buttonSave").click # click button "create"
      sleep 2
    end

    while @minproj <= @maxproj do
      create_projects
      @minproj += 1
    end
end

When(/^edit (\d+) project put (\d+) resources to project$/) do |arg1, arg2|
  @minedit = 1
  @maxedit = arg1.to_i
  @argedit2 = arg2.to_i # maximum resources add to project
      def edit_project_1
        @argedit1 = 1         # minimum resources add to project
        sleep 1
        @driver.find_element(:xpath, ("//li[@class='list-group-item ng-binding ng-scope'][#{@minedit}]")).click # chose project from the list
        sleep 1
        @driver.find_element(:xpath, ("//button[@class='btn btn-axa-default'][1]")).click # click edit button
        sleep 1



      while @argedit1 <= @argedit2 do
        @driver.find_element(:xpath, ("//button[@class='add-button btn btn-axa-default']")).click
        sleep 1
        @driver.find_element(:name, "newResource").send_keys "#@argedit1"
        @driver.find_element(:xpath, ("//li[@class='axa-suggestion-item matches-box ng-binding ng-scope']")).click
        sleep 1
        @driver.find_element(:xpath, ("//div[@class='axa-suggestion-actions']/button[@class='btn btn-axa-default'][1]")).click
        sleep 1

        @argedit1 += 1
      end

      sleep 2
      @driver.find_element(:name, "buttonSave").click # click save button on edit popup
      puts "saved #{@minedit}"
      sleep 1
      @driver.get(@base_url + "#/management/project")

    end

    while @minedit <= @maxedit do
      edit_project_1
      @minedit += 1
    end
end

Then(/^quit$/) do
  @driver.quit
end
