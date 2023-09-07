from docx import Document

time_and_date = "2019-10-21"
employee_name = "John Smith"
manager_name = "Michelle Johnson"
department_name = "HR Department"
save_filename = employee_name + "_recognition_letter_drafted.docx"

document = Document('recognition_letter_template.docx')

def find_replace(paragraph_keyword, draft_keyword, paragraph):
    if paragraph_keyword in paragraph.text:
        # print("found")
        paragraph.text = paragraph.text.replace(paragraph_keyword, draft_keyword)


for paragraph in document.paragraphs:
    find_replace("#time_and_date#", time_and_date, paragraph)
    find_replace("#employee_name#", employee_name, paragraph)
    find_replace("#manager_name#", manager_name, paragraph)
    find_replace("#department_name#", department_name, paragraph)


    print(paragraph.text)

document.save(save_filename)