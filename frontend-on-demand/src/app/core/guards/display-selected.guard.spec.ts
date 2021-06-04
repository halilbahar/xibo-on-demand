import { TestBed } from '@angular/core/testing';

import { DisplaySelectedGuard } from './display-selected.guard';

describe('DisplaySelectedGuard', () => {
  let guard: DisplaySelectedGuard;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    guard = TestBed.inject(DisplaySelectedGuard);
  });

  it('should be created', () => {
    expect(guard).toBeTruthy();
  });
});
