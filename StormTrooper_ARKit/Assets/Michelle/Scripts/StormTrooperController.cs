using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StormTrooperController : MonoBehaviour {

	Animator myAnim;

	public Button Dance;
	public Button Idle;
	public float size;
	public GameObject Target;


	void Start () {
		myAnim = Target.GetComponent<Animator> ();
		Dance.onClick.AddListener (dancebaby);
		Idle.onClick.AddListener (idlebaby);
	}


	void dancebaby(){
		myAnim.SetBool ("isDancing", true);
		myAnim.SetBool ("isIdle", false);
	}


	void idlebaby(){
		myAnim.SetBool ("isIdle", true);
		myAnim.SetBool ("isDancing", false);
	}



	public void sizeChange(float newSize){
		size = newSize;
		Target.transform.localScale = new Vector3 (newSize, newSize, newSize);
	}
		


}