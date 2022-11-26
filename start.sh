if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Devilsbkssks/link-captain.git /link-captain
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /link-captain 
fi
cd /link-captain 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
