/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Contact.as).
 */

package org.granite.test.tide.framework {
	
	import org.granite.tide.BaseContext;
	

	[Bindable]
    public class MyComponentSubcontextA2 {
    	
    	public var triggered:int = 0;
    	
    	[Inject]
    	public var context:BaseContext;
    	
    	[Observer(localOnly="true")]
    	public function myEventHandler(event:MyEvent):void {
    		triggered = ++context.myEventTriggered;
    	}
    }
}
