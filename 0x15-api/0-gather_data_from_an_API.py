#!/usr/bin/python3
"""
Write a Python script that, using this REST API, for a given employee ID,
returns information about his/her TODO list progress.
"""
import requests
from sys import argv

if __name__ == '__main__':

    employee_id = argv[1]
    url_todo = 'https://jsonplaceholder.typicode.com/todos/'
    url_user = 'https://jsonplaceholder.typicode.com/users/'
    todo = requests.get(url_todo, params={'userId': employee_id})
    user = requests.get(url_user, params={'id': employee_id})

    todo_dict_list = todo.json()
    user_dict_list = user.json()

    tasks_done = []
    tasks_total = len(todo_dict_list)
    employee = user_dict_list[0].get('name')

    for task in todo_dict_list:
        if task.get('completed') is True:
            tasks_done.append(task)

    print("Employee {} is done with tasks({}/{}):"
          .format(employee, len(tasks_done), tasks_total))

    for task in tasks_done:
        print("\t {}".format(task.get('title')))
