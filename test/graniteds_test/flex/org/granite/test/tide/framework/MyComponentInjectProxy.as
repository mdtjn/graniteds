/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Contact.as).
 */

package org.granite.test.tide.framework {
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectProxy;
	
	import org.granite.test.tide.Contact;
	

	[Name]
	[Bindable]
    public class MyComponentInjectProxy {
    	
    	[In] [Out]
    	public var objectProxy:ObjectProxy;
		
		
		public function change(obj:Object):void {
			objectProxy = new ObjectProxy(obj);
		}
    }
}
