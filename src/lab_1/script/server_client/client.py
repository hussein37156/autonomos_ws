import rospy
from lab_1.srv import addition, additionResponse
import sys
def client(x,y):
    rospy.wait_for_service('service')
    add = rospy.ServiceProxy('service', addition)
    resp = add(x, y)
    return resp.result

if __name__ == "__main__":
    x=int(sys.argv[1])
    y=int(sys.argv[2])
    client(x,y)
    
    