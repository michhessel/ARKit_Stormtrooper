using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class STController_inters : MonoBehaviour {

	Animator animST;
	public GameObject Target;
	public Button dance;
	public Button idle;
	public float size;

	// Use this for initialization
	void Start () {
		animST = Target.GetComponent<Animator> ();
		dance.onClick.AddListener (danceST);
		idle.onClick.AddListener (idleST);
	}
		

	void danceST(){
		animST.SetBool ("isDancing", true);
		animST.SetBool ("isIdle", false);
	}

	void idleST(){
		animST.SetBool ("isDancing", false);
		animST.SetBool ("isIdle", true);
	}

	public void changeSize (float newSize){
		size = newSize;
		Target.transform.localScale = new Vector3 (newSize, newSize, newSize);	
	}
}
