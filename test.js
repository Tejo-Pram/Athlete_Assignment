const request = require('supertest')
const app = require('./server.js');
const assert = require('assert')

describe('GET /athlete', function ()
{
    it('responding with JSON object of favourite athlete', function (done)
    {
        request('http://localhost:8081')
        .get('/athlete')
        .expect('Content-Type', /json/)
        .expect(200, { myFavouriteAthlete : 'Virat Kohli'}, done);
    });
});