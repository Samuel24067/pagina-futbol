import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VacompananosComponent } from './vacompananos.component';

describe('VacompananosComponent', () => {
  let component: VacompananosComponent;
  let fixture: ComponentFixture<VacompananosComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [VacompananosComponent]
    });
    fixture = TestBed.createComponent(VacompananosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
