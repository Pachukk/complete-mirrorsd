if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pachukk/complete-mirrorsd.git /complete-mirrorsd
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /complete-mirrorsd
fi
cd /complete-mirrorsd
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
