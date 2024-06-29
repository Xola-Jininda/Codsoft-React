<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyPortfolio.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task Tracker App</title>
    <!-- Add React and Babel CDN links -->
    <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    <style>
        /* Add your CSS here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 400px;
        }
        .task {
            padding: 10px;
            margin: 5px 0;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 4px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .task.completed {
            text-decoration: line-through;
            color: #888;
        }
        .task input {
            flex-grow: 1;
            margin-right: 10px;
            padding: 5px;
        }
        .task-form input, .task-form button {
            padding: 10px;
            margin: 5px 0;
            width: calc(100% - 22px);
        }
        .task-form button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .task-form button:hover {
            background-color: #45a049;
        }
        .task button {
            margin-left: 5px;
            background-color: #f44336;
            color: white;
            border: none;
            cursor: pointer;
        }
        .task button:hover {
            background-color: #e53935;
        }
        .task .edit-button {
            background-color: #008CBA;
        }
        .task .edit-button:hover {
            background-color: #007bb5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Task Tracker App</h1>
            <!-- Placeholder for React component -->
            <div id="root"></div>
        </div>
    </form>

    <!-- Add React code here -->
    <script type="text/babel">
        const { useState } = React;

        const TaskForm = ({ addTask, updateTask, currentTask, setCurrentTask }) => {
            const handleSubmit = (e) => {
                e.preventDefault();
                if (!currentTask.text) return;
                if (currentTask.isEditing) {
                    updateTask(currentTask);
                } else {
                    addTask(currentTask.text);
                }
                setCurrentTask({ id: null, text: '', isEditing: false });
            };

            return (
                <form onSubmit={handleSubmit} className="task-form">
                    <input
                        type="text"
                        value={currentTask.text}
                        onChange={(e) => setCurrentTask({ ...currentTask, text: e.target.value })}
                        placeholder="Add or edit a task"
                    />
                    <button type="submit">{currentTask.isEditing ? 'Update Task' : 'Add Task'}</button>
                </form>
            );
        };

        const Task = ({ task, toggleTask, deleteTask, startEditTask }) => (
            <div className={`task ${task.isComplete ? 'completed' : ''}`}>
                <input
                    type="text"
                    value={task.text}
                    readOnly={!task.isEditing}
                    onClick={() => toggleTask(task.id)}
                />
                {task.isEditing ? (
                    <button onClick={() => updateTask(task)}>Update</button>
                ) : (
                    <button onClick={() => startEditTask(task)} className="edit-button">Edit</button>
                )}
                <button onClick={() => deleteTask(task.id)}>Delete</button>
            </div>
        );

        const TaskList = ({ tasks, toggleTask, deleteTask, startEditTask }) => (
            <div>
                {tasks.map((task) => (
                    <Task
                        key={task.id}
                        task={task}
                        toggleTask={toggleTask}
                        deleteTask={deleteTask}
                        startEditTask={startEditTask}
                    />
                ))}
            </div>
        );

        const TaskTracker = () => {
            const [tasks, setTasks] = useState([]);
            const [currentTask, setCurrentTask] = useState({ id: null, text: '', isEditing: false });

            const addTask = (text) => {
                const newTask = { id: Date.now(), text, isComplete: false };
                setTasks([...tasks, newTask]);
            };

            const updateTask = (updatedTask) => {
                setTasks(
                    tasks.map((task) =>
                        task.id === updatedTask.id ? { ...task, text: updatedTask.text, isEditing: false } : task
                    )
                );
            };

            const toggleTask = (id) => {
                setTasks(
                    tasks.map((task) =>
                        task.id === id ? { ...task, isComplete: !task.isComplete } : task
                    )
                );
            };

            const deleteTask = (id) => {
                setTasks(tasks.filter((task) => task.id !== id));
            };

            const startEditTask = (task) => {
                setCurrentTask({ ...task, isEditing: true });
            };

            return (
                <div>
                    <TaskForm
                        addTask={addTask}
                        updateTask={updateTask}
                        currentTask={currentTask}
                        setCurrentTask={setCurrentTask}
                    />
                    <TaskList
                        tasks={tasks}
                        toggleTask={toggleTask}
                        deleteTask={deleteTask}
                        startEditTask={startEditTask}
                    />
                </div>
            );
        };

        ReactDOM.render(<TaskTracker />, document.getElementById('root'));
    </script>

</body>
</html>