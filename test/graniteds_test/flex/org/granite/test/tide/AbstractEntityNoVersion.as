/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (AbstractEntity.as).
 */

package org.granite.test.tide {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import flash.utils.IExternalizable;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;
    import org.granite.ns.tide;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;
    use namespace tide;


    [Managed]
    public class AbstractEntityNoVersion implements IExternalizable {

		[Transient]
        meta var entityManager:IEntityManager = null;

        private var __initialized:Boolean = true;
        private var __detachedState:String = null;

        private var _id:Number;
        private var _uid:String;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __initialized;

            var property:* = this[name];
            return (
                (!(property is AbstractEntity) || (property as AbstractEntity).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }
        // Used only for testing
        meta function setInitialized(init:Boolean):void {
        	__initialized = init;
        }
		meta function defineProxy3(obj:* = null):Boolean {
			if (obj != null) {
				var src:AbstractEntityNoVersion = AbstractEntityNoVersion(obj);
				if (src.__detachedState == null)
					return false;
				_id = src._id;
				__detachedState = src.__detachedState;
			}
			__initialized = false;
			return true;
		}

		[Id]
        public function get id():Number {
            return _id;
        }
        
        // Used only for testing
        public function set id(value:Number):void {
            _id = value;
        }

        public function set uid(value:String):void {
            _uid = value;
        }
        public function get uid():String {
            return _uid;
        }
        
	
//		public function meta_getEntityManager():IEntityManager {
//			return _em;
//		}
//		public function meta_setEntityManager(em:IEntityManager):void {
//			_em = em;
//		}
		

        meta function merge(em:IEntityManager, obj:*):void {
            var src:AbstractEntityNoVersion = AbstractEntityNoVersion(obj);
            __initialized = src.__initialized;
            __detachedState = src.__detachedState;
            if (meta::isInitialized()) {
	            em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
	            em.meta_mergeExternal(src._uid, _uid, null, this, 'uid', function setter(o:*):void{_uid = o as String});
            }
            else {
               	em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
            }
        }

        public function readExternal(input:IDataInput):void {
            __initialized = input.readObject() as Boolean;
            __detachedState = input.readObject() as String;
            if (meta::isInitialized()) {
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _uid = input.readObject() as String;
            }
            else {
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(__initialized);
            output.writeObject(__detachedState);
            if (meta::isInitialized()) {
                output.writeObject((_id is IPropertyHolder) ? IPropertyHolder(_id).object : _id);
                output.writeObject((_uid is IPropertyHolder) ? IPropertyHolder(_uid).object : _uid);
            }
            else {
                output.writeObject(_id);
            }
        }
        
        [Bindable(event="dirtyChange")]
        public function get meta_dirty():Boolean {
        	return entityManager ? entityManager.meta_isEntityChanged(this) : true;
        }
    }
}
