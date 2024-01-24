import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import {DatabaseModule,FrontOfficeModule,BackOfficeModule} from 'enkei';
@Module({
  imports: [DatabaseModule,FrontOfficeModule,BackOfficeModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
