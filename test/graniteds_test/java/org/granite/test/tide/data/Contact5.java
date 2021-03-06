/*
  GRANITE DATA SERVICES
  Copyright (C) 2011 GRANITE DATA SERVICES S.A.S.

  This file is part of Granite Data Services.

  Granite Data Services is free software; you can redistribute it and/or modify
  it under the terms of the GNU Library General Public License as published by
  the Free Software Foundation; either version 2 of the License, or (at your
  option) any later version.

  Granite Data Services is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Library General Public License
  for more details.

  You should have received a copy of the GNU Library General Public License
  along with this library; if not, see <http://www.gnu.org/licenses/>.
*/

package org.granite.test.tide.data;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;


/**
 * @author Franck WOLFF
 */
@Entity
public class Contact5 extends AbstractEntity {

    private static final long serialVersionUID = 1L;


    public Contact5() {
    }
    
    public Contact5(Long id, Long version, String uid) {
    	super(id, version, uid);
    }
    
    @OneToMany(fetch=FetchType.LAZY, mappedBy="contact")
    private Set<Alias5> aliases;
    
    @OneToMany(fetch=FetchType.LAZY, mappedBy="contact")
    private Set<Location5> locations;


	public Set<Alias5> getAliases() {
		return aliases;
	}

	public void setAliases(Set<Alias5> aliases) {
		this.aliases = aliases;
	}

	public Set<Location5> getLocations() {
		return locations;
	}
	
	public void setLocations(Set<Location5> locations) {
		this.locations = locations;
	}
}
