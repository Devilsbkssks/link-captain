if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sonukumar190/link-.git /link-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /link-
fi
cd /link-
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
