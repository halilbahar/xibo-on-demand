import { Observable } from 'rxjs';
import { Display } from 'src/app/models/display.model';
import { Media } from 'src/app/models/media.model';

import { HttpClient } from '@angular/common/http';
import { Injectable, NgZone } from '@angular/core';

import { ConfigService } from './config.service';
import { DisplayEvent } from 'src/app/models/display-event.model';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private baseUrl: string;

  constructor(
    private httpClient: HttpClient,
    private zone: NgZone,
    configService: ConfigService
  ) {
    this.baseUrl = configService.config.apiUrl;
  }

  getDisplays(): Observable<Display[]> {
    return this.httpClient.get<Display[]>(`${this.baseUrl}/display`);
  }

  getVideos(): Observable<Media[]> {
    return this.httpClient.get<Media[]>(`${this.baseUrl}/video`)
  }

  schedule(displayId: number, videoId: number): Observable<void> {
    return this.httpClient.post<void>(`${this.baseUrl}/schedule/${displayId}/${videoId}`, null);
  }

  deleteSchedule(displayId: number): Observable<void> {
    return this.httpClient.delete<void>(`${this.baseUrl}/display/${displayId}`);
  }

  getDisplayEvents(): Observable<DisplayEvent> {
    return new Observable<DisplayEvent>(observer => {
      const eventSource = new EventSource(`${this.baseUrl}/display/event`);
      eventSource.onmessage = x => this.zone.run(() => observer.next(JSON.parse(x.data)));
      eventSource.onerror = x => this.zone.run(() => observer.error(x));

      return () => {
        eventSource.close();
      };
    });
  }
}
