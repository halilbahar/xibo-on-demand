import { BehaviorSubject } from 'rxjs';
import { Display } from 'src/app/models/display.model';

import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SelectedDisplayService {
  display: BehaviorSubject<Display> = new BehaviorSubject(null);
}
