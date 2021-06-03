import { ApiService } from 'src/app/core/services/api.service';
import { SelectedDisplayService } from 'src/app/core/services/selected-display.service';
import { Display } from 'src/app/models/display.model';

import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-display-list',
  templateUrl: './display-list.component.html',
  styleUrls: ['./display-list.component.scss']
})
export class DisplayListComponent implements OnInit {

  displays: Display[] = [];

  constructor(
    private apiService: ApiService,
    private selectedDisplayService: SelectedDisplayService,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.apiService.getDisplays().subscribe(displays => this.displays = displays);
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
