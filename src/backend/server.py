from http.server import BaseHTTPRequestHandler, HTTPServer
import json
import os

class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'application/json; charset=utf-8')
        self.end_headers()
        
        text_content = os.getenv('TEXT_CONTENT', 'Default message from server')
        
        response_data = {
            "title": "hello world",
            "text": text_content
        }
        
        json_response = json.dumps(response_data, ensure_ascii=False)
        self.wfile.write(json_response.encode('utf-8'))

def run(server_class=HTTPServer, handler_class=SimpleHandler):
    server_address = ('', 8080)
    httpd = server_class(server_address, handler_class)
    print('Server running on port 8080...')
    httpd.serve_forever()

if __name__ == '__main__':
    run()