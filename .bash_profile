# .bash_profile

function create_environment()
{
  # Setup the environment by copying the skeleton directory
  # to a directory with the name of the user

  echo "

-------
Warning
-------

You all work using the ${USER} login, but you have
your own home directory. Please, be careful with
other user's files.

  "
  cp -r ${HOME}/skel ${HOME}/${user}
}

function user_login()
{
  # Ask the user's name and change the $HOME to his directory
  trap "exit 0" SIGINT

  echo "Who are you?"
  echo "------------"
  source ${HOME}/users
  select user in "${ALL_USERS[@]}"
  do
     if [[ ! -z ${user} ]] 
     then
        read -p "Confirm ${user} ? [y/N] " result
        if [[ ${result} == [Yy] ]]
        then
  	   break
        fi
     fi
  done
  
  user=( ${user} )
  user=${user[-1]}
  if [[ ! -d ${user} ]]
  then
    # 1st login
    create_environment ${user}
  fi
  export HOME=${HOME}/${user}
  echo "
Your HOME directory is ${HOME}"
  cd ${HOME}
  exec bash
    
  exit 0
}


# If shell is interactive, ask the user his name
case "$-" in
  *i*)  user_login ;;
esac


