class Student
  
	def init(max_courses)
		@max_courses = max_courses
		@schedule = Schedule.new
  
	end
  
  
	def remove_from_schedule(course, quarter_id)
		schedule.remove(course, quarter_id)
	end
  
	def add_to_schedule(course, quarter_id)
		schedule.remove(course, quarter_id)
		current_number_of_courses = schedule.course_count
	
		if current_number_of_courses < MAX_COURSES
			schedule.add(course,quarter_id)
		end
	
	end
	
end


class Courselist

	def init
		@courses = []
	end
	
	def add(course)
		courses.add(course)
	end
	
	def remove(course)
		courses.remove(course)
	end
	
	def course_count
		courses.length()
	end
	
	def get_course_list
		return courses
	end


end

class Schedule

	def init(quarters)
		@quarters = [CourseList.new,CourseList.new,CourseList.new,CourseList.new]
	end
	
	def remove_course(course,quarter_id)
		quarters(quarter_id).remove(course)
	end
	
	def add_course(course,quarter_id)
		quarters(quarter_id).add(course)
	end


end



