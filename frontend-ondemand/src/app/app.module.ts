import { HttpClientModule } from '@angular/common/http';
import { APP_INITIALIZER, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ConfigService } from './core/services/config.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MediaListComponent } from './pages/media-list/media-list.component';
import { DisplayListComponent } from './pages/display-list/display-list.component';

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
    BrowserAnimationsModule
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
