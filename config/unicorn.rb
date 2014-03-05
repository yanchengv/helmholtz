worker_processes 4

APP_PATH = "/home/ubuntu/helmholtz"
working_directory APP_PATH

listen "/tmp/unicorn.helmholtz.sock", :backlog => 64
pid APP_PATH + "/tmp/pids/unicorn.pid"
stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stderr.log"