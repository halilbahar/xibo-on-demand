import { Component } from '@angular/core';
import { Router } from '@angular/router';

import { SelectedDisplayService } from './core/services/selected-display.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  constructor(
    public selectedDisplayService: SelectedDisplayService,
    private router: Router
  ) { }

  back(): void {
    this.selectedDisplayService.display.next(null);
    this.router.navigate(['']);
  }
}
