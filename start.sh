if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sarthakkale16/DQ-1.git /DQ-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-1
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting DQ-1...."
python3 bot.py
