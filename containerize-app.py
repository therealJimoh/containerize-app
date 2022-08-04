import click

@click.command()
def hello():
    click.echo('Hello, Welcome to Docker project workflow')

if __name__ == '__main__':
    hello()