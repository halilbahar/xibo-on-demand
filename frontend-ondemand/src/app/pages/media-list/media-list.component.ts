import { ApiService } from 'src/app/core/services/api.service';
import { Media } from 'src/app/models/media.model';

import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ScheduleDialogComponent } from 'src/app/components/schedule-dialog/schedule-dialog.component';

@Component({
  selector: 'app-media-list',
  templateUrl: './media-list.component.html',
  styleUrls: ['./media-list.component.scss']
})
export class MediaListComponent implements OnInit {

  videos: Media[] = [];

  constructor(
    private apiService: ApiService,
    private dialog: MatDialog
  ) { }

  ngOnInit(): void {
    this.apiService.getVideos().subscribe(videos => this.videos = videos);
  }

  formatDuration(duration: string): string {
    const durationSeconds = parseInt(duration);
    const minutes = Math.floor(durationSeconds / 60);
    const seconds = durationSeconds - minutes * 60;

    const minutesString = minutes < 10 ? `0${minutes}` : `${minutes}`;
    const secondsString = seconds < 10 ? `0${seconds}` : `${seconds}`;


    return `${minutesString}:${secondsString}`;
  }

  openScheduleDialog(video: Media): void {
    this.dialog.open(ScheduleDialogComponent, { data: video, autoFocus: false });
  }
}
