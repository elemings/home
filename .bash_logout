
if [ -n "${SSH_AGENT_PID}" ]
then
    # No need for ssh-agent to hang around.
    ssh-add -D
    ssh-agent -k
fi

