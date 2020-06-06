import json

from flask import Flask, request
from flask_api import status

app = Flask(__name__)


@app.route('/actuator')
def actuator():
    return "Austin:1", status.HTTP_200_OK


# @app.route('/test', methods=["GET"])
# def test():
#     description = request.args.get('description')
#     if description is None or len(description) == 0:
#         return "please provide desscription in url", status.HTTP_400_BAD_REQUEST
#     else:
#         pass
#     tags = Check().ab(description)
#     return json.dumps(tags)

@app.route('/getTagsFromBody', methods=["GET", "POST"])
def getTagsFromBody():
    try:
        # request_text = request.data.decode('utf-8')
        # print(request_text)
        print(request.json)
        data = request.json
        # content = json.loads(request_text)
        # description = content['description']
        # print(descripti)
        description = data['description']
        print(description)
    except Exception as e:
        print(e)
        return "please provide description in json %s" % e, status.HTTP_400_BAD_REQUEST

    return json.dumps(description)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)