import { tap } from 'rxjs/operators';
import { Config } from 'src/app/models/config.model';

import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ConfigService {
  config: Config;

  constructor(private httpClient: HttpClient) { }

  init(): Promise<any> {
    return this.httpClient
      .get<Config>('/assets/config.json')
      .pipe(tap((config) => {
        this.config = config;
      })).toPromise();
  }
}
