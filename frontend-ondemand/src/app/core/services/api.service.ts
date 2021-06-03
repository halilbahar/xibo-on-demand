import { Observable } from 'rxjs';
import { Display } from 'src/app/models/display.model';
import { Media } from 'src/app/models/media.model';

import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { ConfigService } from './config.service';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private baseUrl: string;

  constructor(private httpClient: HttpClient, configService: ConfigService) {
    this.baseUrl = configService.config.apiUrl;
  }

  getDisplays(): Observable<Display[]> {
    return this.httpClient.get<Display[]>(`${this.baseUrl}/display`);
  }

  getVideos(): Observable<Media[]> {
    return this.httpClient.get<Media[]>(`${this.baseUrl}/video`)
  }
}
