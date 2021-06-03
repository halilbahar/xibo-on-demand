import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/core/services/api.service';
import { Display } from 'src/app/models/display.model';

@Component({
  selector: 'app-display-list',
  templateUrl: './display-list.component.html',
  styleUrls: ['./display-list.component.scss']
})
export class DisplayListComponent implements OnInit {

  displays: Display[] = [];

  constructor(private apiService: ApiService) { }

  ngOnInit(): void {
    this.apiService.getDisplays().subscribe(displays => this.displays = displays);
  }
}
