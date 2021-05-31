# import pickle
# import numpy as np
# import pandas as pd
from flask import Flask, request, render_template


APP = Flask(__name__, template_folder='templates')
MODEL = pickle.load(open('model.pkl', 'rb'))
