using UnityEngine;
using System.Collections;
using System.Linq;
using System.Security.Cryptography.X509Certificates;

/// <summary>
/// 物体在几个点之间移动
/// </summary>
public class Move : MonoBehaviour
{
    public Transform[] Paths;
    public float Speed;
    public float Delay; 
   
    private bool _arrived;  
    private bool _isForward = true;
    private int _currentNum; 
    private float _arriedTime;

    public  Type MoveType = Type.Pingpang;

    public enum Type
    {
        Once,
        Pingpang,
        Loop
    }

    private void Start()
    {
        if (!GetComponent<Rigidbody>()) gameObject.AddComponent<Rigidbody>();
    }


    private void Update()
    {
        if (!_arrived)
        {
            if (Vector3.Distance(transform.position, Paths[_currentNum].position) < 0.3f)
            {
                _arrived = true;
                _arriedTime = Time.time;
            }     
        }
        if (_arrived && Time.time > _arriedTime + Delay)
        {
             SelectType();
            _arrived = false;
        }      
    }

    private void LateUpdate()
    {
        if (!_arrived)
        {
            Vector3 v = (Paths[_currentNum].position - transform.position).normalized;
            GetComponent<Rigidbody>().MovePosition(transform.position + v*Time.deltaTime*Speed);
        }
    }

    private void SelectType()
    {
        switch (MoveType)
        {
            case Type.Once:
                enabled = _currentNum != Paths.Length - 1;
                break;
            case Type.Loop:
                _currentNum = _currentNum == Paths.Length - 1 ? 0 : ++_currentNum;
                break;
            case Type.Pingpang:

                if (Paths.Length - 1 == _currentNum) _isForward = false;
                if (0 == _currentNum) _isForward = true;

                _currentNum = _isForward ? ++_currentNum : --_currentNum;
                break;
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        for (int i =0 ;i< Paths.Count()-1;i++)
        {
            if(i==Paths.Count()-1) return;
            Gizmos.DrawLine(Paths[i].position,Paths[i+1].position);
        }

    }
}
