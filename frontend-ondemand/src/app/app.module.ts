import { HttpClientModule } from '@angular/common/http';
import { APP_INITIALIZER, NgModule } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatRippleModule } from '@angular/material/core';
import { MatToolbarModule } from '@angular/material/toolbar';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ConfigService } from './core/services/config.service';
import { DisplayListComponent } from './pages/display-list/display-list.component';
import { MediaListComponent } from './pages/media-list/media-list.component';

@NgModule({
  declarations: [
    AppComponent,
    MediaListComponent,
    DisplayListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatCardModule,
    MatRippleModule
  ],
  providers: [
    {
      provide: APP_INITIALIZER,
      deps: [ConfigService],
      useFactory: (configService: ConfigService) => () => configService.init(),
      multi: true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
