class Backer
  attr_accessor :backed_projects, :project, :backers
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def add_project(project)
    @backed_projects << project
  end
  
  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end
  
end