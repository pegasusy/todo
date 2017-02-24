

module Menu

    def menu
      " Welcome to the TodoLister Program!
      This menu will help you use the Task List System
      1) Add
      2) Show"
    end

    def show
      menu
    end

  end

  module Promptable

    def prompt(message = "Just the facts, ma'am." , symbol = ':> ')
      print message
      print symbol
      gets.chomp
    end

  end

  class List
    attr_reader :all_tasks

    def initialize
      @all_tasks = []
    end

    def add(task)
      all_tasks << task
    end

    def show
      all_tasks
    end
end

  class Task
    attr_reader :description


    def initialize(description)
      @description = description
    end
  end

  if __FILE__ == $PROGRAM_NAME
      include Promptable
      include Menu
      my_list = List.new
      puts 'Please choose from the following list'
      until ['q'].include?(user_input = prompt(show).downcase)
        case user_input
          when '1'
            my_list.add(Task.new(prompt('What is the task you
            would like to accomplish?')))
          when '2'
            puts my_list.show
          when '3'
            my_list.update(prompt('Which task to update?').to_i,
            Task.new(prompt('Task Description?')))
          when '4'
            puts my_list.show
            my_list.delete(prompt('Which task to delete?').to_i)
          when '5'
            my_list.write_to_file(prompt 'What is the filename to
            write to?')
          when '6'
            begin
              my_list.read_from_file(prompt('What is the filename to
              read from?'))
            rescue Errno::ENOENT
              puts 'File name not found, please verify your file name
              and path.'
            end
          when '7'
            puts my_list.show
            my_list.toggle(prompt('Which would you like to toggle the
            status for?').to_i)
          else
            puts 'Try again, I did not understand.'
          end
          prompt('Press enter to continue', '')
        end
      puts 'Outro - Thanks for using the menu system!'
    end

  if __FILE__ == $PROGRAM_NAME
    include Promptable
    include Menu
    my_list = List.new
    puts 'Please choose from the following list'
    until ['q'].include?(user_input = prompt(show).downcase)
      case user_input
        when '1'
          my_list.add(Task.new(prompt('What is the task you
          would like to accomplish?')))
        when '2'
          puts my_list.show
        else
          puts 'Try again, I did not understand.'
        end
        prompt('Press enter to continue', '')
      end
    puts 'Outro - Thanks for using the menu system!'
  end
