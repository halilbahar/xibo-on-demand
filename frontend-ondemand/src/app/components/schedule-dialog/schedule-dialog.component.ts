import { SelectedDisplayService } from 'src/app/core/services/selected-display.service';
import { Media } from 'src/app/models/media.model';

import { Component, Inject, OnInit } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ApiService } from 'src/app/core/services/api.service';
import { Display } from 'src/app/models/display.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-schedule-dialog',
  templateUrl: './schedule-dialog.component.html',
  styleUrls: ['./schedule-dialog.component.scss']
})
export class ScheduleDialogComponent implements OnInit {

  display: Display;

  constructor(
    @Inject(MAT_DIALOG_DATA) public video: Media,
    private selectedDisplayService: SelectedDisplayService,
    private apiService: ApiService,
    private dialogRef: MatDialogRef<ScheduleDialogComponent>,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.display = this.selectedDisplayService.display.value;
  }

  schedule(): void {
    this.apiService
      .schedule(this.selectedDisplayService.display.value.displayId, this.video.mediaId)
      .subscribe(() => {
        this.dialogRef.close(true);
        this.selectedDisplayService.display.next(null);
        this.router.navigate(['']);
      });
  }
}
