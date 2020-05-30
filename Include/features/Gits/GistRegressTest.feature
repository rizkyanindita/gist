#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: create a public gist.
  As a user, I want to create a public gist for e2e testing purpose

  
  Scenario: OpenGitUrl
  Given user open git url
  When user click by href '/login'
  And user input by name 'login' with value 'rizkyanindita@gmail.com'
  And user input by name 'password' with value 'Ranindita011`'
  Then user click button 'commit'
  
  
  Scenario: create public gist
  Given user open gist url
  When user input by name 'gist[description]' with value 'ini deskripsi'
  And user input by name 'gist[contents][][name]' with value 'shopee.txt'
  And user input by class 'CodeMirror-code' with value 'TEST Quality Assurance Shopee'
  Then user click button by text 'Create public gist'
  And verify by text 'Created'
  
  
  Scenario: edit public gist
  Given user click button by aria-label 'Edit this Gist'
  And verify by text 'Editing'
  And clear text by name 'gist[description]'
  When user input by name 'gist[description]' with value 'ini deskripsi edited'
  Then user click button by text 'Update public gist'
  And verify by text 'ini deskripsi edited'
  
  Scenario: delete public gist
  Given user click button by aria-label 'Delete this Gist'
  When confirm alert
  Then verify by aria-label 'Dismiss this message'
  
  Scenario: delete in edit section
  Given user click button by text 'Create a gist'
  When user input by name 'gist[description]' with value 'ini deskripsi'
  And user input by name 'gist[contents][][name]' with value 'shopee.txt'
  And user input by class 'CodeMirror-code' with value 'TEST Quality Assurance Shopee'
  Then user click button by text 'Create public gist'
  When user click button by aria-label 'Edit this Gist'
  Then user click button by aria-label 'Delete this Gist'
  And confirm alert
  And verify by aria-label 'Dismiss this message'
  
  Scenario: see my list of gists
  Given user click button by text 'Your gists'
  Then verify by aria-label 'All gists'
  
  
  
  Scenario: create public gist 2 file
  Given user click button by text 'Create a gist'
  When user input by name 'gist[description]' with value 'ini deskripsi'
  And user input by name 'gist[contents][][name]' with value 'shopee.txt'
  And user input by class 'CodeMirror-code' with value 'TEST Quality Assurance Shopee'
  Then user click button by text 'Add file'
  
  Scenario: delete file
  Given user click button by aria-label 'Remove file'
  And user input by name 'gist[contents][][name]' with value 'shopee.txt'
  And user input by class 'CodeMirror-code' with value 'TEST Quality Assurance Shopee'
  Then user click button by text 'Create public gist'
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  