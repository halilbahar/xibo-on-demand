import { Subscription } from 'rxjs';
import { ApiService } from 'src/app/core/services/api.service';
import { SelectedDisplayService } from 'src/app/core/services/selected-display.service';
import { Display } from 'src/app/models/display.model';

import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-display-list',
  templateUrl: './display-list.component.html',
  styleUrls: ['./display-list.component.scss']
})
export class DisplayListComponent implements OnInit, OnDestroy {

  displays: Display[] = [];
  displayEventSubscription: Subscription;

  constructor(
    private apiService: ApiService,
    private selectedDisplayService: SelectedDisplayService,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.displayEventSubscription = this.apiService
      .getDisplayEvents()
      .subscribe((event) => {
        if (event.type === 'DELETE') {
          for (const display of this.displays) {
            if (display.displayId === event.session.displayId) {
              display.session = null;
            }
          }
        } else {
          for (const display of this.displays) {
            if (display.displayId === event.session.displayId) {
              display.session = event.session;
              break;
            }
          }
        }

      });
    this.apiService.getDisplays().subscribe(displays => this.displays = displays);
  }

  ngOnDestroy(): void {
    this.displayEventSubscription.unsubscribe();
  }

  selectDisplay(display: Display): void {
    if (display.session == null) {
      this.selectedDisplayService.display.next(display);
      this.router.navigate(['media']);
    }
  }

  removeSchedule(display: Display): void {
    this.apiService.deleteSchedule(display.uuid).subscribe();
  }
}
