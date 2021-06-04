import { TestBed } from '@angular/core/testing';

import { SelectedDisplayService } from './selected-display.service';

describe('SelectedDisplayService', () => {
  let service: SelectedDisplayService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SelectedDisplayService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
